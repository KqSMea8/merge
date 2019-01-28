.class public Lc8/aGk;
.super Lc8/RD;
.source "DYKCalendarJSBridge.java"


# static fields
.field private static CALANDER_EVENT_URL:Ljava/lang/String;

.field private static CALANDER_REMIDER_URL:Ljava/lang/String;

.field private static CALANDER_URL:Ljava/lang/String;

.field private static CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

.field private static CALENDARS_ACCOUNT_TYPE:Ljava/lang/String;

.field private static CALENDARS_DISPLAY_NAME:Ljava/lang/String;

.field private static CALENDARS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "content://com.android.calendar/calendars"

    sput-object v0, Lc8/aGk;->CALANDER_URL:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "content://com.android.calendar/events"

    sput-object v0, Lc8/aGk;->CALANDER_EVENT_URL:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "content://com.android.calendar/reminders"

    sput-object v0, Lc8/aGk;->CALANDER_REMIDER_URL:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "test"

    sput-object v0, Lc8/aGk;->CALENDARS_NAME:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "test@gmail.com"

    sput-object v0, Lc8/aGk;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "com.android.exchange"

    sput-object v0, Lc8/aGk;->CALENDARS_ACCOUNT_TYPE:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "\u6d4b\u8bd5\u8d26\u6237"

    sput-object v0, Lc8/aGk;->CALENDARS_DISPLAY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private static addCalendarAccount(Landroid/content/Context;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 146
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 147
    .local v4, "timeZone":Ljava/util/TimeZone;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v5, "value":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    sget-object v7, Lc8/aGk;->CALENDARS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v6, "account_name"

    sget-object v7, Lc8/aGk;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v6, "account_type"

    sget-object v7, Lc8/aGk;->CALENDARS_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v6, "calendar_displayName"

    sget-object v7, Lc8/aGk;->CALENDARS_DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v6, "visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string/jumbo v6, "calendar_color"

    const v7, -0xffff01

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string/jumbo v6, "calendar_access_level"

    const/16 v7, 0x2bc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string/jumbo v6, "sync_events"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string/jumbo v6, "calendar_timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v6, "ownerAccount"

    sget-object v7, Lc8/aGk;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v6, "canOrganizerRespond"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    sget-object v6, Lc8/aGk;->CALANDER_URL:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "calendarUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "caller_is_syncadapter"

    const-string/jumbo v8, "true"

    .line 163
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "account_name"

    sget-object v8, Lc8/aGk;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    .line 164
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "account_type"

    sget-object v8, Lc8/aGk;->CALENDARS_ACCOUNT_TYPE:Ljava/lang/String;

    .line 165
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    .local v1, "result":Landroid/net/Uri;
    if-nez v1, :cond_0

    const-wide/16 v2, -0x1

    .line 170
    .local v2, "id":J
    :goto_0
    return-wide v2

    .line 169
    .end local v2    # "id":J
    :cond_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static addCalendarEvent(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendar"    # Lcom/youku/phone/windvane/CalendarDTO;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v7

    .line 178
    :cond_1
    invoke-static {p0}, Lc8/aGk;->checkAndAddCalendarAccount(Landroid/content/Context;)I

    move-result v0

    .line 179
    .local v0, "calId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "addCalendarEvent calId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    if-ltz v0, :cond_0

    .line 185
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v2, "event":Landroid/content/ContentValues;
    const-string/jumbo v9, "title"

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v9, "description"

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v9, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getStartTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 196
    .local v4, "start":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getEndTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 198
    .local v1, "end":Ljava/lang/Long;
    const-string/jumbo v9, "dtstart"

    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string/jumbo v9, "dtend"

    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string/jumbo v9, "hasAlarm"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string/jumbo v9, "eventTimezone"

    const-string/jumbo v10, "Asia/Shanghai"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lc8/aGk;->CALANDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    .local v3, "newEvent":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 209
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "event_id"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string/jumbo v9, "minutes"

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getRemind()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string/jumbo v9, "method"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lc8/aGk;->CALANDER_REMIDER_URL:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 215
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    move v7, v8

    .line 219
    goto/16 :goto_0
.end method

.method private static checkAndAddCalendarAccount(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lc8/aGk;->checkCalendarAccount(Landroid/content/Context;)I

    move-result v2

    .line 107
    .local v2, "oldId":I
    if-ltz v2, :cond_0

    .line 114
    .end local v2    # "oldId":I
    :goto_0
    return v2

    .line 110
    .restart local v2    # "oldId":I
    :cond_0
    invoke-static {p0}, Lc8/aGk;->addCalendarAccount(Landroid/content/Context;)J

    move-result-wide v0

    .line 111
    .local v0, "addId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 112
    invoke-static {p0}, Lc8/aGk;->checkCalendarAccount(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static checkCalendarAccount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lc8/aGk;->CALANDER_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    .local v7, "userCursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 133
    if-eqz v7, :cond_0

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    :cond_1
    :goto_0
    return v0

    .line 125
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 126
    .local v6, "count":I
    if-lez v6, :cond_3

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 133
    if-eqz v7, :cond_1

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 133
    :cond_3
    if-eqz v7, :cond_4

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 133
    .end local v6    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static checkCalendarPlanIsExist(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendar"    # Lcom/youku/phone/windvane/CalendarDTO;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v8

    .line 87
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lc8/aGk;->CALANDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "title=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 85
    goto :goto_0

    :cond_2
    move v0, v8

    .line 87
    goto :goto_0
.end method

.method public static deleteCalendarEvent(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendarDTO"    # Lcom/youku/phone/windvane/CalendarDTO;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v11

    .line 258
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lc8/aGk;->CALANDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 229
    .local v7, "eventCursor":Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 254
    if-eqz v7, :cond_2

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 232
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 234
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_b

    .line 235
    const-string/jumbo v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "eventTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 238
    .local v9, "id":I
    sget-object v0, Lc8/aGk;->CALANDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v2, v9

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 239
    .local v6, "deleteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 240
    .local v10, "rows":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_5

    .line 254
    if-eqz v7, :cond_4

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 254
    :cond_5
    if-eqz v7, :cond_6

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v12

    goto :goto_0

    .line 254
    .end local v6    # "deleteUri":Landroid/net/Uri;
    .end local v9    # "id":I
    .end local v10    # "rows":I
    :cond_7
    if-eqz v7, :cond_8

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v11

    goto/16 :goto_0

    .line 254
    .end local v8    # "eventTitle":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    move v0, v11

    goto/16 :goto_0

    .line 254
    :cond_b
    if-eqz v7, :cond_c

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    move v0, v12

    .line 258
    goto/16 :goto_0

    .line 254
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_d

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private static enableCalendarPlan()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    sget-object v4, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    sget-object v5, Lc8/ddn;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.permission.WRITE_CALENDAR"

    sget-object v5, Lc8/ddn;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 97
    .local v0, "permission":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 100
    :goto_1
    return v2

    .end local v0    # "permission":Z
    :cond_0
    move v0, v3

    .line 95
    goto :goto_0

    .restart local v0    # "permission":Z
    :cond_1
    move v2, v3

    .line 100
    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 35
    const-string/jumbo v3, "DYKCalendarJSBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "execute\u65b9\u6cd5\u8c03\u7528 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " params "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-nez p2, :cond_0

    .line 74
    :goto_0
    return v1

    .line 39
    :cond_0
    const-class v3, Lcom/youku/phone/windvane/CalendarDTO;

    invoke-static {p2, v3}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/windvane/CalendarDTO;

    .line 41
    .local v0, "calendar":Lcom/youku/phone/windvane/CalendarDTO;
    const-string/jumbo v3, "addCalendarPlan"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calendar title "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " link "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/youku/phone/windvane/CalendarDTO;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/youku/phone/windvane/CalendarDTO;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/youku/phone/windvane/CalendarDTO;->getEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/aGk;->addCalendarEvent(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_1
    move v1, v2

    .line 49
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    .line 50
    :cond_2
    const-string/jumbo v3, "cancelCalendarPlan"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calendar title "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/youku/phone/windvane/CalendarDTO;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/aGk;->deleteCalendarEvent(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_2
    move v1, v2

    .line 57
    goto/16 :goto_0

    .line 55
    :cond_3
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_2

    .line 58
    :cond_4
    const-string/jumbo v3, "enableCalendarPlan"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 59
    invoke-static {}, Lc8/aGk;->enableCalendarPlan()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_3
    move v1, v2

    .line 64
    goto/16 :goto_0

    .line 62
    :cond_5
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_3

    .line 65
    :cond_6
    const-string/jumbo v3, "checkCalendarPlanIsExist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 66
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/aGk;->checkCalendarPlanIsExist(Landroid/content/Context;Lcom/youku/phone/windvane/CalendarDTO;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 67
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_4
    move v1, v2

    .line 71
    goto/16 :goto_0

    .line 69
    :cond_7
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_4

    .line 73
    :cond_8
    const-string/jumbo v2, "DYKCalendarJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JS\u6ca1\u6709\u5b9e\u73b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u65b9\u6cd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
