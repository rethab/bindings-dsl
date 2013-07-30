#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Date-and-Time-Functions.html>

module Bindings.GLib.Utilities.DateAndTimeFunctions where
#strict_import
import Bindings.GLib.Fundamentals

#num G_USEC_PER_SEC

#starttype GTimeVal
#field tv_sec , <glong>
#field tv_usec , <glong>
#stoptype

#ccall g_get_current_time , Ptr <GTimeVal> -> IO ()
#ccall g_usleep , <gulong> -> IO ()
#ccall g_time_val_add , Ptr <GTimeVal> -> <glong> -> IO ()
#ccall g_time_val_from_iso8601 , Ptr <gchar> -> Ptr <GTimeVal> -> IO <gboolean>
#ccall g_time_val_to_iso8601 , Ptr <GTimeVal> -> IO (Ptr <gchar>)

#starttype GDate
#stoptype


#integral_t GDateDMY

#num G_DATE_DAY
#num G_DATE_MONTH
#num G_DATE_YEAR


#integral_t GDateDay


#integral_t GDateMonth

#num G_DATE_BAD_MONTH
#num G_DATE_JANUARY
#num G_DATE_FEBRUARY
#num G_DATE_MARCH
#num G_DATE_APRIL
#num G_DATE_MAY
#num G_DATE_JUNE
#num G_DATE_JULY
#num G_DATE_AUGUST
#num G_DATE_SEPTEMBER
#num G_DATE_OCTOBER
#num G_DATE_NOVEMBER
#num G_DATE_DECEMBER


#integral_t GDateYear


#integral_t GDateWeekday

#num G_DATE_BAD_WEEKDAY
#num G_DATE_MONDAY
#num G_DATE_TUESDAY
#num G_DATE_WEDNESDAY
#num G_DATE_THURSDAY
#num G_DATE_FRIDAY
#num G_DATE_SATURDAY
#num G_DATE_SUNDAY


#num G_DATE_BAD_DAY
#num G_DATE_BAD_JULIAN
#num G_DATE_BAD_YEAR

#ccall g_date_new , IO (Ptr <GDate>)
#ccall g_date_new_dmy , <GDateDay> -> <GDateMonth> -> <GDateYear> -> IO (Ptr <GDate>)
#ccall g_date_new_julian , <guint32> -> IO (Ptr <GDate>)
#ccall g_date_clear , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_free , Ptr <GDate> -> IO ()

#ccall g_date_set_day , Ptr <GDate> -> <GDateDay> -> IO ()
#ccall g_date_set_month , Ptr <GDate> -> <GDateMonth> -> IO ()
#ccall g_date_set_year , Ptr <GDate> -> <GDateYear> -> IO ()
#ccall g_date_set_dmy , Ptr <GDate> -> <GDateDay> -> <GDateMonth> -> <GDateYear> -> IO ()
#ccall g_date_set_julian , Ptr <GDate> -> <guint32> -> IO ()
#ccall g_date_set_time_t , Ptr <GDate> -> CTime -> IO ()
#ccall g_date_set_time_val , Ptr <GDate> -> Ptr <GTimeVal> -> IO ()
#ccall g_date_set_parse , Ptr <GDate> -> Ptr <gchar> -> IO ()

#ccall g_date_add_days , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_subtract_days , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_add_months , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_subtract_months , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_add_years , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_subtract_years , Ptr <GDate> -> <guint> -> IO ()
#ccall g_date_days_between , Ptr <GDate> -> Ptr <GDate> -> IO <gint>
#ccall g_date_compare , Ptr <GDate> -> Ptr <GDate> -> IO <gint>
#ccall g_date_clamp , Ptr <GDate> -> Ptr <GDate> -> Ptr <GDate> -> IO ()
#ccall g_date_order , Ptr <GDate> -> Ptr <GDate> -> IO ()

#ccall g_date_get_day , Ptr <GDate> -> IO <GDateDay>
#ccall g_date_get_month , Ptr <GDate> -> IO <GDateMonth>
#ccall g_date_get_year , Ptr <GDate> -> IO <GDateYear>
#ccall g_date_get_julian , Ptr <GDate> -> IO <guint32>
#ccall g_date_get_weekday , Ptr <GDate> -> IO <GDateWeekday>
#ccall g_date_get_day_of_year , Ptr <GDate> -> IO <guint>

#ccall g_date_get_days_in_month , <GDateMonth> -> <GDateYear> -> IO <guint8>
#ccall g_date_is_first_of_month , Ptr <GDate> -> IO <gboolean>
#ccall g_date_is_last_of_month , Ptr <GDate> -> IO <gboolean>
#ccall g_date_is_leap_year , <GDateYear> -> IO <gboolean>
#ccall g_date_get_monday_week_of_year , Ptr <GDate> -> IO <guint>
#ccall g_date_get_monday_weeks_in_year , <GDateYear> -> IO <guint8>
#ccall g_date_get_sunday_week_of_year , Ptr <GDate> -> IO <guint>
#ccall g_date_get_sunday_weeks_in_year , <GDateYear> -> IO <guint8>
#ccall g_date_get_iso8601_week_of_year , Ptr <GDate> -> IO <guint>

#ccall g_date_strftime , Ptr <gchar> -> <gsize> -> Ptr <gchar> -> Ptr <GDate> -> IO <gsize>
#opaque_t struct tm
#ccall g_date_to_struct_tm , Ptr <GDate> -> Ptr <tm> -> IO ()

#ccall g_date_valid , Ptr <GDate> -> IO <gboolean>
#ccall g_date_valid_day , <GDateDay> -> IO <gboolean>
#ccall g_date_valid_month , <GDateMonth> -> IO <gboolean>
#ccall g_date_valid_year , <GDateYear> -> IO <gboolean>
#ccall g_date_valid_dmy , <GDateDay> -> <GDateMonth> -> <GDateYear> -> IO <gboolean>
#ccall g_date_valid_julian , <guint32> -> IO <gboolean>
#ccall g_date_valid_weekday , <GDateWeekday> -> IO <gboolean>

