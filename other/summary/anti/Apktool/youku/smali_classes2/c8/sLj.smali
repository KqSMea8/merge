.class public Lc8/sLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tLj;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/tLj;


# direct methods
.method constructor <init>(Lc8/tLj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/tLj;

    .prologue
    .line 1564
    iput-object p1, p0, Lc8/sLj;->this$1:Lc8/tLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lc8/sLj;->this$1:Lc8/tLj;

    iget-object v0, v0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-static {v0}, Lc8/KLj;->access$1800(Lc8/KLj;)V

    .line 1569
    return-void
.end method
