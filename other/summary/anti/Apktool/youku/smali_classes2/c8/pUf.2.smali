.class public Lc8/pUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityLifeCycleCallBack"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lc8/tUf;


# direct methods
.method constructor <init>(Lc8/tUf;)V
    .locals 1

    .prologue
    .line 913
    iput-object p1, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lc8/pUf;->count:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 919
    iget-object v0, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$900(Lc8/tUf;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 974
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$900(Lc8/tUf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 975
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$900(Lc8/tUf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 976
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 977
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$900(Lc8/tUf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 935
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 929
    iget-object v0, p0, Lc8/pUf;->this$0:Lc8/tUf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/tUf;->access$1002(Lc8/tUf;Z)Z

    .line 930
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 970
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 924
    iget v0, p0, Lc8/pUf;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/pUf;->count:I

    .line 925
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 939
    iget v2, p0, Lc8/pUf;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lc8/pUf;->count:I

    .line 940
    iget v2, p0, Lc8/pUf;->count:I

    if-nez v2, :cond_0

    .line 941
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/tUf;->access$1002(Lc8/tUf;Z)Z

    .line 943
    const-string/jumbo v2, "Page_hotpatch"

    const-string/jumbo v3, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v5}, Lc8/tUf;->access$600(Lc8/tUf;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v6, v7}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 945
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$1100(Lc8/tUf;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$1200(Lc8/tUf;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    const-wide/32 v0, 0xea60

    .line 949
    .local v0, "interval":J
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v2}, Lc8/tUf;->access$1400(Lc8/tUf;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lc8/oUf;

    invoke-direct {v3, p0}, Lc8/oUf;-><init>(Lc8/pUf;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 961
    iget-object v2, p0, Lc8/pUf;->this$0:Lc8/tUf;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lc8/tUf;->access$1202(Lc8/tUf;Z)Z

    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bbe\u7f6e\u6740\u6389\u8fdb\u7a0b\u5b9a\u65f6\u5668\u6210\u529f\uff0c\u95f4\u9694\u91cd\u590d\u65f6\u95f4\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .end local v0    # "interval":J
    :cond_0
    return-void
.end method
