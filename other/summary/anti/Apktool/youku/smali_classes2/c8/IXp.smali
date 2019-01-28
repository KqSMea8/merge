.class public Lc8/IXp;
.super Ljava/lang/Object;
.source "SpdyStreamContext.java"


# instance fields
.field public callBack:Lc8/JXp;

.field public streamContext:Ljava/lang/Object;

.field public streamId:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "ut"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lc8/IXp;->streamContext:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IXp;->callBack:Lc8/JXp;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lc8/IXp;->streamId:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lc8/JXp;)V
    .locals 0
    .param p1, "ut"    # Ljava/lang/Object;
    .param p2, "cb"    # Lc8/JXp;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/IXp;->streamContext:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lc8/IXp;->callBack:Lc8/JXp;

    .line 18
    return-void
.end method

.method static getContext(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 26
    :goto_0
    return v0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
