.class public Lc8/ntf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->unregisterListener([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$namespaces:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qtf;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 288
    iput-object p1, p0, Lc8/ntf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/ntf;->val$namespaces:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lc8/ntf;->this$0:Lc8/qtf;

    invoke-static {v1}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v1

    if-nez v1, :cond_0

    .line 292
    const-string/jumbo v1, "OrangeConfigImpl"

    const-string/jumbo v2, "unregisterListeners fail as mRemoteService is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/ntf;->this$0:Lc8/qtf;

    invoke-static {v1}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v1

    iget-object v2, p0, Lc8/ntf;->val$namespaces:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/xtf;->unregisterListeners([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "OrangeConfigImpl"

    const-string/jumbo v2, "unregisterListeners"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
