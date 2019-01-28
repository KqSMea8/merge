.class public Lc8/yrb;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add14Event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 20
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventDescription"    # Ljava/lang/String;
    .param p3, "eventBeginDate"    # Ljava/util/Calendar;
    .param p4, "eventEndDate"    # Ljava/util/Calendar;
    .param p5, "reminderMinutus"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 186
    const-wide/16 v8, 0x1

    .line 191
    .local v8, "calId":J
    :try_start_0
    invoke-static/range {p0 .. p4}, Lc8/yrb;->checkEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const/4 v3, 0x1

    .line 228
    :goto_0
    return v3

    .line 194
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 195
    .local v16, "startMillis":J
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 199
    .local v12, "endMillis":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 200
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v18, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "dtstart"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string/jumbo v3, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string/jumbo v3, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v3, "description"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v3, "calendar_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string/jumbo v3, "eventTimezone"

    const-string/jumbo v4, "GMT+8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 209
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 211
    .local v14, "myEventsId":Ljava/lang/Long;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "description"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "dtend"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 214
    .local v11, "cur":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 216
    .local v10, "cr1":Landroid/content/ContentResolver;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v19, "values1":Landroid/content/ContentValues;
    const-string/jumbo v3, "minutes"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string/jumbo v3, "event_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string/jumbo v3, "method"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 222
    .end local v10    # "cr1":Landroid/content/ContentResolver;
    .end local v19    # "values1":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 226
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "cur":Landroid/database/Cursor;
    .end local v12    # "endMillis":J
    .end local v14    # "myEventsId":Ljava/lang/Long;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "startMillis":J
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private static add8Event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 21
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventDescription"    # Ljava/lang/String;
    .param p3, "eventBeginDate"    # Ljava/util/Calendar;
    .param p4, "eventEndDate"    # Ljava/util/Calendar;
    .param p5, "reminderMinutus"    # I

    .prologue
    .line 143
    const-wide/16 v8, 0x1

    .line 147
    .local v8, "calId":J
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 148
    .local v16, "startMillis":J
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 150
    .local v12, "endMillis":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "calendar_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v4, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v4, "dtstart"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string/jumbo v4, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string/jumbo v4, "eventStatus"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string/jumbo v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string/jumbo v4, "eventTimezone"

    const-string/jumbo v5, "GMT+8"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v4, "content://com.android.calendar/events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 161
    .local v3, "eventsUri":Landroid/net/Uri;
    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 162
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 163
    .local v14, "myEventsId":Ljava/lang/Long;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "description"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "dtend"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 166
    .local v11, "cur":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 168
    .local v10, "cr1":Landroid/content/ContentResolver;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v20, "values1":Landroid/content/ContentValues;
    const-string/jumbo v4, "minutes"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string/jumbo v4, "event_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string/jumbo v4, "method"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string/jumbo v4, "content://com.android.calendar/reminders"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 173
    .local v15, "remindersUri":Landroid/net/Uri;
    move-object/from16 v0, v20

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v4, 0x1

    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "eventsUri":Landroid/net/Uri;
    .end local v10    # "cr1":Landroid/content/ContentResolver;
    .end local v11    # "cur":Landroid/database/Cursor;
    .end local v12    # "endMillis":J
    .end local v14    # "myEventsId":Ljava/lang/Long;
    .end local v15    # "remindersUri":Landroid/net/Uri;
    .end local v16    # "startMillis":J
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    .end local v20    # "values1":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 175
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "eventsUri":Landroid/net/Uri;
    .restart local v11    # "cur":Landroid/database/Cursor;
    .restart local v12    # "endMillis":J
    .restart local v14    # "myEventsId":Ljava/lang/Long;
    .restart local v16    # "startMillis":J
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 179
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "eventsUri":Landroid/net/Uri;
    .end local v11    # "cur":Landroid/database/Cursor;
    .end local v12    # "endMillis":J
    .end local v14    # "myEventsId":Ljava/lang/Long;
    .end local v16    # "startMillis":J
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static addEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventDescription"    # Ljava/lang/String;
    .param p3, "eventBeginDate"    # Ljava/util/Calendar;
    .param p4, "eventEndDate"    # Ljava/util/Calendar;
    .param p5, "reminderMinutus"    # I

    .prologue
    .line 28
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 33
    invoke-static/range {p0 .. p5}, Lc8/yrb;->add14Event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z

    move-result v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-static/range {p0 .. p5}, Lc8/yrb;->add8Event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static addEvents(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/xrb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/calendar/CalendarEvent;>;"
    const/4 v10, 0x0

    .line 76
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 78
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 79
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/xrb;

    .line 80
    .local v7, "calendarEvent":Lc8/xrb;
    iget-object v1, v7, Lc8/xrb;->eventName:Ljava/lang/String;

    iget-object v2, v7, Lc8/xrb;->eventDescription:Ljava/lang/String;

    iget-object v3, v7, Lc8/xrb;->eventBeginDate:Ljava/util/Calendar;

    iget-object v4, v7, Lc8/xrb;->eventEndDate:Ljava/util/Calendar;

    iget v5, v7, Lc8/xrb;->reminderMinutus:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc8/yrb;->add14Event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-gt v9, v8, :cond_0

    .line 82
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/xrb;

    .line 83
    .local v6, "addedCalendarEvent":Lc8/xrb;
    iget-object v0, v6, Lc8/xrb;->eventName:Ljava/lang/String;

    iget-object v1, v6, Lc8/xrb;->eventBeginDate:Ljava/util/Calendar;

    iget-object v2, v6, Lc8/xrb;->eventEndDate:Ljava/util/Calendar;

    invoke-static {p0, v0, v1, v2}, Lc8/yrb;->delEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6    # "addedCalendarEvent":Lc8/xrb;
    :cond_0
    move v0, v10

    .line 90
    .end local v7    # "calendarEvent":Lc8/xrb;
    .end local v8    # "i":I
    .end local v9    # "j":I
    :goto_2
    return v0

    .line 78
    .restart local v7    # "calendarEvent":Lc8/xrb;
    .restart local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 88
    .end local v7    # "calendarEvent":Lc8/xrb;
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .end local v8    # "i":I
    :cond_3
    move v0, v10

    .line 90
    goto :goto_2
.end method

.method public static checkEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventDescription"    # Ljava/lang/String;
    .param p3, "eventBeginDate"    # Ljava/util/Calendar;
    .param p4, "eventEndDate"    # Ljava/util/Calendar;

    .prologue
    .line 108
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 109
    .local v10, "startMillis":J
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 110
    .local v8, "endMillis":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, "eventsUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "title= ? AND dtstart= ? AND dtend= ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 117
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkEvents(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/xrb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/calendar/CalendarEvent;>;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 123
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 124
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 125
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xrb;

    .line 126
    .local v0, "calendarEvent":Lc8/xrb;
    iget-object v8, v0, Lc8/xrb;->eventName:Ljava/lang/String;

    iget-object v9, v0, Lc8/xrb;->eventDescription:Ljava/lang/String;

    iget-object v10, v0, Lc8/xrb;->eventBeginDate:Ljava/util/Calendar;

    iget-object v11, v0, Lc8/xrb;->eventEndDate:Ljava/util/Calendar;

    invoke-static {p0, v8, v9, v10, v11}, Lc8/yrb;->checkEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    .line 127
    .local v4, "isSuccess":Z
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 128
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v8, v0, Lc8/xrb;->eventBeginDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "eventBeginDate":Ljava/lang/String;
    iget-object v8, v0, Lc8/xrb;->eventEndDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "eventEndDate":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 131
    .local v5, "jobj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "calendar_title"

    iget-object v9, v0, Lc8/xrb;->eventName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v8, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v8, "calendar_start_datetime"

    invoke-virtual {v5, v8, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v8, "calendar_end_datetime"

    invoke-virtual {v5, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "calendarEvent":Lc8/xrb;
    .end local v1    # "eventBeginDate":Ljava/lang/String;
    .end local v2    # "eventEndDate":Ljava/lang/String;
    .end local v4    # "isSuccess":Z
    .end local v5    # "jobj":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_1
    return-object v8

    :cond_1
    const-string/jumbo v8, ""

    goto :goto_1
.end method

.method public static delEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 18
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventBeginDate"    # Ljava/util/Calendar;
    .param p3, "eventEndDate"    # Ljava/util/Calendar;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 72
    :goto_0
    return v4

    .line 44
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 45
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "content://com.android.calendar/events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 46
    .local v3, "eventsUri":Landroid/net/Uri;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "description"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "dtend"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 49
    .local v8, "cur":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 50
    .local v12, "eventId":J
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 52
    .local v9, "tempEventsId":Ljava/lang/Long;
    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 53
    .local v16, "tempEventsTitle":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 54
    .local v14, "startTime":J
    const/4 v4, 0x4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 55
    .local v10, "endTime":J
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-ltz v4, :cond_2

    .line 56
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gtz v4, :cond_2

    .line 57
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 62
    .end local v9    # "tempEventsId":Ljava/lang/Long;
    .end local v10    # "endTime":J
    .end local v14    # "startTime":J
    .end local v16    # "tempEventsTitle":Ljava/lang/String;
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-nez v4, :cond_4

    .line 63
    const/4 v4, 0x0

    goto :goto_0

    .line 66
    :cond_4
    :try_start_0
    const-string/jumbo v4, "_id= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static delEvents(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/xrb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/module/calendar/CalendarEvent;>;"
    const/4 v2, 0x0

    .line 94
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xrb;

    .line 98
    .local v0, "calendarEvent":Lc8/xrb;
    iget-object v3, v0, Lc8/xrb;->eventName:Ljava/lang/String;

    iget-object v4, v0, Lc8/xrb;->eventBeginDate:Ljava/util/Calendar;

    iget-object v5, v0, Lc8/xrb;->eventEndDate:Ljava/util/Calendar;

    invoke-static {p0, v3, v4, v5}, Lc8/yrb;->delEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    .end local v0    # "calendarEvent":Lc8/xrb;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 96
    .restart local v0    # "calendarEvent":Lc8/xrb;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "calendarEvent":Lc8/xrb;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
