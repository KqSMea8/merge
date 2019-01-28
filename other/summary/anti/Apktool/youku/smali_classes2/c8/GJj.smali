.class public Lc8/GJj;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HJj;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HJj;


# direct methods
.method constructor <init>(Lc8/HJj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HJj;

    .prologue
    .line 194
    iput-object p1, p0, Lc8/GJj;->this$0:Lc8/HJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lc8/GJj;->this$0:Lc8/HJj;

    invoke-static {v0}, Lc8/HJj;->access$400(Lc8/HJj;)Lc8/OIj;

    move-result-object v0

    iget-object v1, p0, Lc8/GJj;->this$0:Lc8/HJj;

    invoke-static {v1}, Lc8/HJj;->access$300(Lc8/HJj;)Lc8/eJj;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 198
    return-void
.end method
