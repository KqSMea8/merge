.class public Lc8/KJj;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MJj;->doAsyncCallback(Landroid/os/Handler;Lc8/OIj;Lc8/eJj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/MJj;

.field final synthetic val$callback:Lc8/OIj;

.field final synthetic val$ykResponse:Lc8/eJj;


# direct methods
.method constructor <init>(Lc8/MJj;Lc8/OIj;Lc8/eJj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/MJj;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/KJj;->this$0:Lc8/MJj;

    iput-object p2, p0, Lc8/KJj;->val$callback:Lc8/OIj;

    iput-object p3, p0, Lc8/KJj;->val$ykResponse:Lc8/eJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lc8/KJj;->val$callback:Lc8/OIj;

    iget-object v1, p0, Lc8/KJj;->val$ykResponse:Lc8/eJj;

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 144
    return-void
.end method
