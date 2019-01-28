.class public Lc8/NJj;
.super Ljava/lang/Object;
.source "OkHttpListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OJj;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OJj;


# direct methods
.method constructor <init>(Lc8/OJj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/OJj;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/NJj;->this$0:Lc8/OJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lc8/NJj;->this$0:Lc8/OJj;

    invoke-static {v0}, Lc8/OJj;->access$100(Lc8/OJj;)Lc8/OIj;

    move-result-object v0

    iget-object v1, p0, Lc8/NJj;->this$0:Lc8/OJj;

    invoke-static {v1}, Lc8/OJj;->access$000(Lc8/OJj;)Lc8/eJj;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 60
    return-void
.end method
