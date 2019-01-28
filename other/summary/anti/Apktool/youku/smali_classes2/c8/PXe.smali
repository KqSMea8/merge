.class public Lc8/PXe;
.super Ljava/lang/Object;
.source "AVFSAliDBImpl.java"

# interfaces
.implements Lc8/sZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QXe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IExecCallbackAdapter"
.end annotation


# instance fields
.field private final mCallback:Lc8/BXe;


# direct methods
.method public constructor <init>(Lc8/BXe;)V
    .locals 0
    .param p1, "callback"    # Lc8/BXe;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lc8/PXe;->mCallback:Lc8/BXe;

    .line 111
    return-void
.end method


# virtual methods
.method public onExecDone(Lc8/UYe;)V
    .locals 2
    .param p1, "aliDBExecResult"    # Lc8/UYe;

    .prologue
    .line 115
    iget-object v1, p0, Lc8/PXe;->mCallback:Lc8/BXe;

    iget-object v0, p1, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lc8/BXe;->onExecDone(Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
