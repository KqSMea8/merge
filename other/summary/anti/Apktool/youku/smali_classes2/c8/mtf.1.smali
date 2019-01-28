.class public Lc8/mtf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

.field final synthetic val$namespaces:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qtf;Lcom/taobao/orange/OrangeConfigListenerV1;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 265
    iput-object p1, p0, Lc8/mtf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/mtf;->val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

    iput-object p3, p0, Lc8/mtf;->val$namespaces:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v2, p0, Lc8/mtf;->this$0:Lc8/qtf;

    invoke-static {v2}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v2

    if-nez v2, :cond_0

    .line 269
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "unregisterListenerV1 fail as mRemoteService is null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    new-instance v0, Lc8/Atf;

    iget-object v2, p0, Lc8/mtf;->val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-direct {v0, v2}, Lc8/Atf;-><init>(Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 273
    .local v0, "aidllistener":Lc8/Atf;
    iget-object v2, p0, Lc8/mtf;->this$0:Lc8/qtf;

    invoke-static {v2}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v2

    iget-object v3, p0, Lc8/mtf;->val$namespaces:[Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lc8/xtf;->unregisterListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v0    # "aidllistener":Lc8/Atf;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "unregisterListenerV1"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
