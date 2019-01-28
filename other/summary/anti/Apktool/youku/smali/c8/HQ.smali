.class public Lc8/HQ;
.super Ljava/util/TimerTask;
.source "Countly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IQ;->startTask(Lc8/TQ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IQ;


# direct methods
.method constructor <init>(Lc8/IQ;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lc8/HQ;->this$0:Lc8/IQ;

    .line 92
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/HQ;->this$0:Lc8/IQ;

    invoke-static {v0}, Lc8/IQ;->access$0(Lc8/IQ;)V

    .line 95
    return-void
.end method
