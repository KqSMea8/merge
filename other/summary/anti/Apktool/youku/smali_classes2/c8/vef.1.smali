.class public Lc8/vef;
.super Landroid/os/AsyncTask;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONObjectShiftTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private request:Lc8/zef;

.field private final templateManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/xef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/xef;)V
    .locals 1
    .param p1, "templateManager"    # Lc8/xef;

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 390
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/vef;->templateManagerRef:Ljava/lang/ref/WeakReference;

    .line 391
    return-void
.end method

.method static synthetic access$302(Lc8/vef;Lc8/zef;)Lc8/zef;
    .locals 0
    .param p0, "x0"    # Lc8/vef;
    .param p1, "x1"    # Lc8/zef;

    .prologue
    .line 382
    iput-object p1, p0, Lc8/vef;->request:Lc8/zef;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 382
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/vef;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 395
    iget-object v4, p0, Lc8/vef;->templateManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/xef;

    .line 396
    .local v3, "templateManager":Lc8/xef;
    if-nez v3, :cond_0

    .line 413
    :goto_0
    return-object v6

    .line 400
    :cond_0
    new-instance v1, Lc8/Aef;

    invoke-direct {v1}, Lc8/Aef;-><init>()V

    .line 401
    .local v1, "result":Lc8/Aef;
    iget-object v4, p0, Lc8/vef;->request:Lc8/zef;

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Lc8/xef;->access$500(Lc8/xef;Lc8/zef;Lc8/Aef;Z)V

    .line 403
    iget-object v4, p0, Lc8/vef;->request:Lc8/zef;

    iget-object v2, v4, Lc8/zef;->templateId:Ljava/lang/String;

    .line 404
    .local v2, "templateId":Ljava/lang/String;
    invoke-static {v3}, Lc8/xef;->access$600(Lc8/xef;)Landroid/util/LruCache;

    move-result-object v0

    .line 406
    .local v0, "jsonObjectCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;>;"
    invoke-static {v3}, Lc8/xef;->access$600(Lc8/xef;)Landroid/util/LruCache;

    move-result-object v5

    monitor-enter v5

    .line 407
    :try_start_0
    iget-object v4, v1, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 409
    iget-object v4, v1, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
