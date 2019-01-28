.class public Lc8/Gsf;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->notifyListener(Ljava/lang/String;Lc8/Dtf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;

.field final synthetic val$listener:Lc8/Dtf;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jsf;Lc8/Dtf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;

    .prologue
    .line 463
    iput-object p1, p0, Lc8/Gsf;->this$0:Lc8/Jsf;

    iput-object p2, p0, Lc8/Gsf;->val$listener:Lc8/Dtf;

    iput-object p3, p0, Lc8/Gsf;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lc8/Gsf;->val$listener:Lc8/Dtf;

    iget-object v2, p0, Lc8/Gsf;->val$namespace:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/Dtf;->onConfigUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "notifyListener"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "namespace"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Gsf;->val$namespace:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
