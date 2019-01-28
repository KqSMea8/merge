.class public Lc8/Raf;
.super Ljava/lang/Object;
.source "DCountDownTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Taf;->getTimer()Lc8/Waf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Taf;


# direct methods
.method constructor <init>(Lc8/Taf;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lc8/Raf;->this$0:Lc8/Taf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/Raf;->this$0:Lc8/Taf;

    invoke-static {v0}, Lc8/Taf;->access$000(Lc8/Taf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lc8/Raf;->this$0:Lc8/Taf;

    invoke-virtual {v0}, Lc8/Taf;->updateCountDownViewTime()V

    .line 92
    :cond_0
    return-void
.end method
