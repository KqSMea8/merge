.class public Lc8/lUf;
.super Lc8/Sy;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tUf;->loadAndFixPatch(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field LOADED:I

.field final synthetic this$0:Lc8/tUf;


# direct methods
.method constructor <init>(Lc8/tUf;)V
    .locals 1

    .prologue
    .line 580
    iput-object p1, p0, Lc8/lUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Lc8/Sy;-><init>()V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lc8/lUf;->LOADED:I

    return-void
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 9
    .param p1, "event"    # Lorg/osgi/framework/BundleEvent;

    .prologue
    .line 584
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v6

    iget v7, p0, Lc8/lUf;->LOADED:I

    if-eq v6, v7, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v6

    invoke-interface {v6}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lc8/lUf;->this$0:Lc8/tUf;

    invoke-static {v6}, Lc8/tUf;->access$400(Lc8/tUf;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/qUf;

    .line 590
    .local v4, "patchFlag":Lc8/qUf;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lc8/qUf;->isLoaded:Z

    if-nez v6, :cond_0

    .line 591
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 592
    .local v0, "bundleImp":Lc8/hy;
    const-string/jumbo v6, "."

    const-string/jumbo v7, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "tmpPatchName":Ljava/lang/String;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lc8/qUf;->isLoaded:Z

    .line 594
    iget-object v6, p0, Lc8/lUf;->this$0:Lc8/tUf;

    invoke-static {v6}, Lc8/tUf;->access$500(Lc8/tUf;)Lc8/sNc;

    move-result-object v6

    iget-object v7, v4, Lc8/qUf;->patch:Lc8/rNc;

    invoke-virtual {v0}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lc8/sNc;->loadPatch(Ljava/lang/String;Lc8/rNc;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "bundleImp":Lc8/hy;
    .end local v4    # "patchFlag":Lc8/qUf;
    .end local v5    # "tmpPatchName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lc8/hqf;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "exception":Ljava/lang/String;
    const-string/jumbo v6, "hotpatch_andfix_load"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/lUf;->this$0:Lc8/tUf;

    invoke-static {v8}, Lc8/tUf;->access$600(Lc8/tUf;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "3"

    invoke-static {v6, v7, v8, v2}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "bundleChanged load"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
