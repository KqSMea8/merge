.class public Lc8/mE;
.super Ljava/util/TimerTask;
.source "BlowSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nE;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nE;


# direct methods
.method constructor <init>(Lc8/nE;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lc8/mE;->this$0:Lc8/nE;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/mE;->this$0:Lc8/nE;

    invoke-static {v0}, Lc8/nE;->access$000(Lc8/nE;)V

    .line 82
    return-void
.end method
