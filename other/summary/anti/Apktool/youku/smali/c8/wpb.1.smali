.class public Lc8/wpb;
.super Ljava/lang/Object;
.source "WXExtA.java"

# interfaces
.implements Lc8/qbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xpb;->onHostViewInitialized(Lc8/qeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xpb;


# direct methods
.method constructor <init>(Lc8/xpb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xpb;

    .prologue
    .line 23
    iput-object p1, p0, Lc8/wpb;->this$0:Lc8/xpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lc8/Fxb;

    iget-object v1, p0, Lc8/wpb;->this$0:Lc8/xpb;

    invoke-virtual {v1}, Lc8/xpb;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Fxb;-><init>(Lc8/tbg;)V

    iget-object v1, p0, Lc8/wpb;->this$0:Lc8/xpb;

    invoke-virtual {v0, v1}, Lc8/Fxb;->doTrace(Lc8/tbg;)V

    .line 27
    return-void
.end method
