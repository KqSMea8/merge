.class public Lc8/otf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->enterForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;


# direct methods
.method constructor <init>(Lc8/qtf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 306
    iput-object p1, p0, Lc8/otf;->this$0:Lc8/qtf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v1, p0, Lc8/otf;->this$0:Lc8/qtf;

    invoke-static {v1}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v1

    if-nez v1, :cond_0

    .line 310
    const-string/jumbo v1, "OrangeConfigImpl"

    const-string/jumbo v2, "enterForeground fail as mRemoteService is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/otf;->this$0:Lc8/qtf;

    invoke-static {v1}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v1

    invoke-interface {v1}, Lc8/xtf;->enterForeground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "OrangeConfigImpl"

    const-string/jumbo v2, "enterForeground"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
