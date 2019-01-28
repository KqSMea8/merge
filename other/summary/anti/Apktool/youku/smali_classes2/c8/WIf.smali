.class public Lc8/WIf;
.super Ljava/lang/Object;
.source "MonitorTimerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YIf;


# direct methods
.method constructor <init>(Lc8/YIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/YIf;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/WIf;->this$0:Lc8/YIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/WIf;->this$0:Lc8/YIf;

    invoke-static {v0}, Lc8/YIf;->access$000(Lc8/YIf;)V

    .line 25
    return-void
.end method
