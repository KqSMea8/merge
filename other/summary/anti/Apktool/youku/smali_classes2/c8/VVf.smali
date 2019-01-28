.class public Lc8/VVf;
.super Ljava/lang/Object;
.source "DatePickerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UVf;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static dateFormatter:Ljava/text/SimpleDateFormat;

.field private static timeFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v1, Lc8/VVf;->dateFormatter:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lc8/VVf;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 156
    :cond_0
    :try_start_0
    sget-object v1, Lc8/VVf;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DatePickerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private static parseTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v1, Lc8/VVf;->timeFormatter:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lc8/VVf;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 170
    :cond_0
    :try_start_0
    sget-object v1, Lc8/VVf;->timeFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DatePickerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/UVf;Ljava/util/Map;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/UVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/UVf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p5, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 56
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-static/range {p1 .. p1}, Lc8/VVf;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 57
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lc8/PVf;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lc8/PVf;-><init>(Lc8/UVf;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 74
    .local v2, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v9

    .line 76
    .local v9, "datePicker":Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    .line 77
    .local v11, "defaultMinDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 79
    .local v10, "defaultMaxDate":Ljava/util/Calendar;
    const/16 v3, 0x76c

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 80
    const/16 v3, 0x834

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v10, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 82
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-static/range {p3 .. p3}, Lc8/VVf;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 84
    .local v14, "minDate":J
    invoke-virtual {v9}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v4

    cmp-long v3, v4, v14

    if-ltz v3, :cond_2

    .line 85
    invoke-static/range {p3 .. p3}, Lc8/VVf;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 91
    .end local v14    # "minDate":J
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-static/range {p2 .. p2}, Lc8/VVf;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 93
    .local v12, "maxDate":J
    invoke-virtual {v9}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_3

    .line 94
    invoke-static/range {p2 .. p2}, Lc8/VVf;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 101
    .end local v12    # "maxDate":J
    :cond_1
    :goto_1
    new-instance v3, Lc8/QVf;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lc8/QVf;-><init>(Lc8/UVf;)V

    invoke-virtual {v2, v3}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    const/4 v3, -0x2

    const-string/jumbo v4, "cancelTitle"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/VVf;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 109
    const/4 v3, -0x1

    const-string/jumbo v4, "confirmTitle"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/VVf;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 112
    return-void

    .line 87
    .restart local v14    # "minDate":J
    :cond_2
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 88
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0

    .line 96
    .end local v14    # "minDate":J
    .restart local v12    # "maxDate":J
    :cond_3
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 97
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1
.end method

.method public static pickTime(Landroid/content/Context;Ljava/lang/String;Lc8/UVf;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/UVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lc8/UVf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 116
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lc8/VVf;->parseTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lc8/RVf;

    invoke-direct {v2, p2}, Lc8/RVf;-><init>(Lc8/UVf;)V

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 133
    .local v0, "dialog":Landroid/app/TimePickerDialog;
    new-instance v1, Lc8/SVf;

    invoke-direct {v1, p2}, Lc8/SVf;-><init>(Lc8/UVf;)V

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 140
    const/4 v1, -0x2

    const-string/jumbo v2, "cancelTitle"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/VVf;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 141
    const/4 v1, -0x1

    const-string/jumbo v2, "confirmTitle"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/VVf;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 144
    return-void
.end method

.method private static setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "which"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc8/TVf;

    invoke-direct {v2, p0, p1, p2}, Lc8/TVf;-><init>(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
