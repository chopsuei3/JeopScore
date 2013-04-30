.class public final Lcom/google/appinventor/components/runtime/util/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DATE_APRIL:I = 0x3

.field public static final DATE_AUGUST:I = 0x7

.field public static final DATE_DAY:I = 0x5

.field public static final DATE_DECEMBER:I = 0xb

.field public static final DATE_FEBRUARY:I = 0x1

.field public static final DATE_FRIDAY:I = 0x6

.field public static final DATE_HOUR:I = 0xb

.field public static final DATE_JANUARY:I = 0x0

.field public static final DATE_JULY:I = 0x6

.field public static final DATE_JUNE:I = 0x5

.field public static final DATE_MARCH:I = 0x2

.field public static final DATE_MAY:I = 0x4

.field public static final DATE_MINUTE:I = 0xc

.field public static final DATE_MONDAY:I = 0x2

.field public static final DATE_MONTH:I = 0x2

.field public static final DATE_NOVEMBER:I = 0xa

.field public static final DATE_OCTOBER:I = 0x9

.field public static final DATE_SATURDAY:I = 0x7

.field public static final DATE_SECOND:I = 0xd

.field public static final DATE_SEPTEMBER:I = 0x8

.field public static final DATE_SUNDAY:I = 0x1

.field public static final DATE_THURSDAY:I = 0x5

.field public static final DATE_TUESDAY:I = 0x3

.field public static final DATE_WEDNESDAY:I = 0x4

.field public static final DATE_WEEK:I = 0x3

.field public static final DATE_YEAR:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static DateAdd(Ljava/util/Calendar;II)V
    .locals 2
    .parameter "date"
    .parameter "intervalKind"
    .parameter "interval"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 76
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal date/time interval kind in function DateAdd()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 88
    return-void

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .parameter "value"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 110
    .local v0, date:Ljava/util/Calendar;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, dateTimeFormat:Ljava/text/DateFormat;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 112
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2           #dateTimeFormat:Ljava/text/DateFormat;
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 115
    .local v3, e:Ljava/text/ParseException;
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, dateFormat:Ljava/text/DateFormat;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 117
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 120
    .local v4, e1:Ljava/text/ParseException;
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v1       #dateFormat:Ljava/text/DateFormat;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 122
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 123
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 124
    .local v5, pe:Ljava/text/ParseException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "illegal date/time format in function DateValue()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static Day(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static FormatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 152
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 190
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 201
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 228
    const-string v0, "%1$tB"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 249
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Timer()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 284
    const-string v0, "%1$tA"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
