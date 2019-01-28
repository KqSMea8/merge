.class public abstract Lc8/yPg;
.super Ljava/lang/Object;
.source "FontFamilyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zPg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FontFetchAsyncTask"
.end annotation


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPostOnUIThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yPg;->mPostOnUIThread:Z

    .line 210
    iput-object p1, p0, Lc8/yPg;->mApplicationContext:Landroid/content/Context;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/yPg;->mHandler:Landroid/os/Handler;

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "postOnUIThread"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yPg;->mPostOnUIThread:Z

    .line 216
    iput-object p1, p0, Lc8/yPg;->mApplicationContext:Landroid/content/Context;

    .line 218
    iput-boolean p2, p0, Lc8/yPg;->mPostOnUIThread:Z

    .line 219
    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/yPg;->mHandler:Landroid/os/Handler;

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method abstract onPostExecute([Lc8/uPg;)V
.end method

.method public run()V
    .locals 9

    .prologue
    .line 224
    sget-object v0, Lc8/tPg;->CONTENT_JSON:Ljava/lang/String;

    .line 226
    .local v0, "contents":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 227
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "font-family"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 228
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v5, 0x0

    .line 229
    .local v5, "result":[Lc8/uPg;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 230
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 231
    .local v6, "size":I
    new-array v5, v6, [Lc8/uPg;

    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 234
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/uPg;->createFromJsonString(Ljava/lang/String;)Lc8/uPg;

    move-result-object v7

    aput-object v7, v5, v2

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "i":I
    .end local v6    # "size":I
    :cond_0
    move-object v1, v5

    .line 240
    .local v1, "finalResult":[Lc8/uPg;
    iget-object v7, p0, Lc8/yPg;->mHandler:Landroid/os/Handler;

    new-instance v8, Lc8/xPg;

    invoke-direct {v8, p0, v1}, Lc8/xPg;-><init>(Lc8/yPg;[Lc8/uPg;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method
