.class public Lc8/nng;
.super Ljava/lang/Object;
.source "AntImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qng;->init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qng;

.field final synthetic val$builder:Lc8/Rng;

.field final synthetic val$context:Landroid/app/Application;

.field final synthetic val$fetchModel:Lcom/tmall/wireless/ant/lifecycle/FetchModel;


# direct methods
.method constructor <init>(Lc8/qng;Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lc8/nng;->this$0:Lc8/qng;

    iput-object p2, p0, Lc8/nng;->val$context:Landroid/app/Application;

    iput-object p3, p0, Lc8/nng;->val$fetchModel:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    iput-object p4, p0, Lc8/nng;->val$builder:Lc8/Rng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lc8/nng;->this$0:Lc8/qng;

    iget-object v2, p0, Lc8/nng;->val$context:Landroid/app/Application;

    iget-object v3, p0, Lc8/nng;->val$fetchModel:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    iget-object v4, p0, Lc8/nng;->val$builder:Lc8/Rng;

    invoke-static {v1, v2, v3, v4}, Lc8/qng;->access$200(Lc8/qng;Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V

    .line 118
    iget-object v1, p0, Lc8/nng;->this$0:Lc8/qng;

    invoke-virtual {v1}, Lc8/qng;->appEnterForeground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
