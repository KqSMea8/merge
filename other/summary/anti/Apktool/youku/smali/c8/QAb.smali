.class public Lc8/QAb;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TAb;


# direct methods
.method constructor <init>(Lc8/TAb;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lc8/QAb;->this$0:Lc8/TAb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/QAb;->this$0:Lc8/TAb;

    invoke-virtual {v0}, Lc8/TAb;->store()V

    .line 39
    return-void
.end method
