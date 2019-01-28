.class public Lc8/UIf;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportInfo"
.end annotation


# static fields
.field static final COL_BIZ:Ljava/lang/String; = "bizCode"

.field static final COL_BTAG:Ljava/lang/String; = "bizTag"

.field static final COL_CODE:Ljava/lang/String; = "code"

.field static final COL_EXT1:Ljava/lang/String; = "ext1"

.field static final COL_EXT2:Ljava/lang/String; = "ext2"

.field static final COL_ID:Ljava/lang/String; = "id"

.field static final COL_KEY:Ljava/lang/String; = "key"

.field static final COL_MARK:Ljava/lang/String; = "mark"

.field static final COL_M_TIME:Ljava/lang/String; = "mtopTime"

.field static final COL_PULL_MODE:Ljava/lang/String; = "mode"

.field static final COL_SOURCE:Ljava/lang/String; = "source"

.field static final COL_S_TIME:Ljava/lang/String; = "serverTime"

.field static final COL_TASK:Ljava/lang/String; = "taskId"

.field static final COL_TIME:Ljava/lang/String; = "time"

.field static final COL_TOPIC:Ljava/lang/String; = "topic"

.field static final COL_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public bizCode:I

.field public bizTag:Ljava/lang/String;

.field public code:I

.field public ext:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public key:J

.field public mark:I

.field public mode:I

.field public mtopTime:J

.field public serverTime:J

.field public source:I

.field public taskId:Ljava/lang/String;

.field public time:J

.field public topic:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "bizCode"    # I
    .param p4, "topic"    # Ljava/lang/String;
    .param p5, "bizTag"    # Ljava/lang/String;
    .param p6, "code"    # I
    .param p7, "mode"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lc8/UIf;->id:Ljava/lang/String;

    .line 141
    iput p2, p0, Lc8/UIf;->type:I

    .line 142
    iput p3, p0, Lc8/UIf;->bizCode:I

    .line 143
    iput-object p4, p0, Lc8/UIf;->topic:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lc8/UIf;->bizTag:Ljava/lang/String;

    .line 145
    iput p6, p0, Lc8/UIf;->code:I

    .line 146
    iput p7, p0, Lc8/UIf;->mode:I

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/UIf;->time:J

    .line 149
    invoke-static {}, Lc8/xIf;->getServerTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/UIf;->mtopTime:J

    .line 150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/UIf;->key:J

    .line 151
    return-void
.end method


# virtual methods
.method public toContentValue()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lc8/UIf;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v1, "bizCode"

    iget v2, p0, Lc8/UIf;->bizCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string/jumbo v1, "topic"

    iget-object v2, p0, Lc8/UIf;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "bizTag"

    iget-object v2, p0, Lc8/UIf;->bizTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "code"

    iget v2, p0, Lc8/UIf;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v1, "source"

    iget v2, p0, Lc8/UIf;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v1, "type"

    iget v2, p0, Lc8/UIf;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lc8/UIf;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "mode"

    iget v2, p0, Lc8/UIf;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lc8/UIf;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string/jumbo v1, "mtopTime"

    iget-wide v2, p0, Lc8/UIf;->mtopTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string/jumbo v1, "serverTime"

    iget-wide v2, p0, Lc8/UIf;->serverTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string/jumbo v1, "mark"

    iget v2, p0, Lc8/UIf;->mark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string/jumbo v1, "key"

    iget-wide v2, p0, Lc8/UIf;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    return-object v0
.end method

.method public toJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 174
    .local v0, "map":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lc8/UIf;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "bizCode"

    iget v2, p0, Lc8/UIf;->bizCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v1, "topic"

    iget-object v2, p0, Lc8/UIf;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "bizTag"

    iget-object v2, p0, Lc8/UIf;->bizTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v1, "code"

    iget v2, p0, Lc8/UIf;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "source"

    iget v2, p0, Lc8/UIf;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v1, "type"

    iget v2, p0, Lc8/UIf;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lc8/UIf;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v1, "mode"

    iget v2, p0, Lc8/UIf;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lc8/UIf;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v1, "mtopTime"

    iget-wide v2, p0, Lc8/UIf;->mtopTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v1, "mark"

    iget v2, p0, Lc8/UIf;->mark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "serverTime"

    iget-wide v2, p0, Lc8/UIf;->serverTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object v0
.end method
