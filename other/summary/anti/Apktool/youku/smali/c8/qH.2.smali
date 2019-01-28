.class public Lc8/qH;
.super Ljava/lang/Object;
.source "WVEventService.java"


# static fields
.field private static volatile EventManager:Lc8/qH;

.field public static WV_BACKWARD_EVENT:I

.field public static WV_EVENT:I

.field public static WV_FORWARD_EVENT:I


# instance fields
.field private mBackwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/pH;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/pH;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/pH;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lc8/qH;->WV_FORWARD_EVENT:I

    .line 26
    const/4 v0, 0x0

    sput v0, Lc8/qH;->WV_EVENT:I

    .line 28
    const/4 v0, -0x1

    sput v0, Lc8/qH;->WV_BACKWARD_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qH;->mList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static getInstance()Lc8/qH;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lc8/qH;->EventManager:Lc8/qH;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lc8/qH;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lc8/qH;->EventManager:Lc8/qH;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lc8/qH;

    invoke-direct {v0}, Lc8/qH;-><init>()V

    sput-object v0, Lc8/qH;->EventManager:Lc8/qH;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lc8/qH;->EventManager:Lc8/qH;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addEventListener(Lc8/pH;)V
    .locals 1
    .param p1, "listener"    # Lc8/pH;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    sget v0, Lc8/qH;->WV_EVENT:I

    invoke-virtual {p0, p1, v0}, Lc8/qH;->addEventListener(Lc8/pH;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEventListener(Lc8/pH;I)V
    .locals 1
    .param p1, "listener"    # Lc8/pH;
    .param p2, "priority"    # I

    .prologue
    .line 56
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    sget v0, Lc8/qH;->WV_FORWARD_EVENT:I

    if-ne p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    sget v0, Lc8/qH;->WV_EVENT:I

    if-ne p2, v0, :cond_2

    .line 60
    iget-object v0, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_2
    :try_start_2
    sget v0, Lc8/qH;->WV_BACKWARD_EVENT:I

    if-ne p2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onEvent(I)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v1, v0}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs declared-synchronized onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4
    .param p1, "Id"    # I
    .param p2, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/taobao/windvane/service/WVEventContext;

    invoke-direct {v0, p2, p3}, Landroid/taobao/windvane/service/WVEventContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 109
    .local v0, "ctx":Landroid/taobao/windvane/service/WVEventContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 110
    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/pH;

    invoke-interface {v3, p1, v0, p4}, Lc8/pH;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v2

    .line 112
    .local v2, "result":Landroid/taobao/windvane/service/WVEventResult;
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 133
    .end local v2    # "result":Landroid/taobao/windvane/service/WVEventResult;
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v2

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, 0x0

    :goto_2
    :try_start_1
    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 118
    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/pH;

    invoke-interface {v3, p1, v0, p4}, Lc8/pH;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v2

    .line 120
    .restart local v2    # "result":Landroid/taobao/windvane/service/WVEventResult;
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-nez v3, :cond_0

    .line 117
    .end local v2    # "result":Landroid/taobao/windvane/service/WVEventResult;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 126
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 127
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/pH;

    invoke-interface {v3, p1, v0, p4}, Lc8/pH;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v2

    .line 128
    .restart local v2    # "result":Landroid/taobao/windvane/service/WVEventResult;
    if-eqz v2, :cond_5

    iget-boolean v3, v2, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-nez v3, :cond_0

    .line 125
    .end local v2    # "result":Landroid/taobao/windvane/service/WVEventResult;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 133
    :cond_6
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "ctx":Landroid/taobao/windvane/service/WVEventContext;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public varargs onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 1
    .param p1, "id"    # I
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0, v0, p2}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeEventListener(Lc8/pH;)V
    .locals 5
    .param p1, "listener"    # Lc8/pH;

    .prologue
    const/4 v4, -0x1

    .line 82
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 84
    .local v2, "index":I
    if-eq v4, v2, :cond_0

    .line 85
    iget-object v3, p0, Lc8/qH;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    :cond_0
    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 89
    .local v1, "forwardIndex":I
    if-eq v4, v1, :cond_1

    .line 90
    iget-object v3, p0, Lc8/qH;->mForwardList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    :cond_1
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "backwardIndex":I
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_2

    .line 95
    iget-object v3, p0, Lc8/qH;->mBackwardList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "backwardIndex":I
    .end local v1    # "forwardIndex":I
    .end local v2    # "index":I
    :cond_2
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
