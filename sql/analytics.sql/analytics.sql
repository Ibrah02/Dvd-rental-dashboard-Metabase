kpis.sql

SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM rental;

04_top_films.sql

SELECT f.title, COUNT(r.rental_id)
FROM film f
JOIN rental r ON f.film_id = r.film_id
GROUP BY f.title
ORDER BY COUNT(r.rental_id) DESC
LIMIT 5;



# Dashboard Structure

## Row 1: KPIs
- Total Movies
- Total Customers
- Total Rentals
- Total Revenue

## Row 2: Content Insights
- Movies by Rating
- Movies by Category
- Rentals by Rating

## Row 3: Performance
- Top 5 Films
- Revenue by Film

Architecture:

# System Architecture

Data Flow:

PostgreSQL (DVD Rental Dataset)
        ↓
Metabase (BI Layer)
        ↓
Dashboards & Insights

Tools Used:
- Docker
- PostgreSQL
- Metabase



