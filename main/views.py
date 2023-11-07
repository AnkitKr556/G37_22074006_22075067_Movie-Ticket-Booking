from django.shortcuts import render,redirect
from accounts.models import *
from django.urls import reverse
from django.http import HttpResponseRedirect
# Create your views here.


def index(request):
    movies = Movie.objects.all()
    context = {
        'mov': movies
    }
    return render(request,"index.html", context)

def movies(request, id):
    #cin = Cinema.objects.filter(shows__movie=id).distinct()
    movies = Movie.objects.get(movie=id)
    cin = Cinema.objects.filter(cinema_show__movie=movies).prefetch_related('cinema_show').distinct()  # get all cinema
    show = Shows.objects.filter(movie=id)
    context = {
        'movies':movies,
        'show':show,
        'cin':cin,
    }
    return render(request, "movies.html", context )

def seat(request, id):
    show = Shows.objects.get(shows=id)
    seat = Bookings.objects.filter(shows=id)
    return render(request,"seat.html", {'show':show, 'seat':seat})    

def booked(request):
    if request.method == 'POST':
        user = request.user
        seat = ','.join(request.POST.getlist('check'))
        items_list = seat.split(',')

        # Get the length of the list, which is the number of items
        length = len(items_list)
        show1=request.POST['show']
        show = Shows.objects.get(shows=show1)
        book = Bookings(useat=seat, shows=show, user=user,len=length)
        book.save()
        return render(request,"booked.html", {'book':book,'len':length})  
    

def ticket(request, id):
    ticket = Bookings.objects.get(id=id)
    print(ticket.shows.price)
    return render(request,"ticket.html", {'ticket':ticket})

def search_view(request):
    query = request.GET.get('q')  # Get the search query from the form

    if query:
        # Use the query to search your movies model and retrieve relevant results
        results = Movie.objects.filter(movie_name__icontains=query).union(Movie.objects.filter(movie_genre__icontains=query))
        # results = Movie.objects.filter(movie_name__icontains=query).union(
        #     Movie.objects.filter(movie_genre__icontains=query))
        context = {
            'results': results,
            'query': query,
        }
        return render(request, 'search_results.html', context)

    return redirect(reverse('index'))    # Handle the case where no results are found