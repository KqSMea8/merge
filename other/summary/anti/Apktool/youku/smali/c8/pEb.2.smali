.class public Lc8/pEb;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tEb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tEb;


# direct methods
.method constructor <init>(Lc8/tEb;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lc8/pEb;->this$0:Lc8/tEb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/pEb;->this$0:Lc8/tEb;

    invoke-virtual {v0}, Lc8/tEb;->store()V

    .line 43
    return-void
.end method
