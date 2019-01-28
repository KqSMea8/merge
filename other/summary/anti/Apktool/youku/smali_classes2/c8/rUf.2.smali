.class public Lc8/rUf;
.super Landroid/os/AsyncTask;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryHotpatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tUf;


# direct methods
.method private constructor <init>(Lc8/tUf;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lc8/rUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/tUf;Lc8/iUf;)V
    .locals 0
    .param p1, "x0"    # Lc8/tUf;
    .param p2, "x1"    # Lc8/iUf;

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lc8/rUf;-><init>(Lc8/tUf;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 896
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/rUf;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 900
    :try_start_0
    iget-object v0, p0, Lc8/rUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$300(Lc8/tUf;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc8/IUf;->isSupportPatch(Landroid/app/Application;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lc8/rUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$800(Lc8/tUf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-object v3

    .line 903
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/rUf;->this$0:Lc8/tUf;

    const-string/jumbo v1, "android_taobao_hotpatch"

    invoke-virtual {v0, v1}, Lc8/tUf;->queryNewHotPatch(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lc8/rUf;->this$0:Lc8/tUf;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lc8/tUf;->access$702(Lc8/tUf;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    iget-object v0, p0, Lc8/rUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$800(Lc8/tUf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/rUf;->this$0:Lc8/tUf;

    invoke-static {v1}, Lc8/tUf;->access$800(Lc8/tUf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
