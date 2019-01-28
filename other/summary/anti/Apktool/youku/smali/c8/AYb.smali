.class public Lc8/AYb;
.super Ljava/lang/Object;
.source "CopyOnWriteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/BYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lc8/AYb;I)I
    .locals 0
    .param p0, "x0"    # Lc8/AYb;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lc8/AYb;->mSize:I

    return p1
.end method


# virtual methods
.method getData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/AYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray$Access<TT;>;"
    iget-object v0, p0, Lc8/AYb;->mData:Ljava/util/Collection;

    return-object v0
.end method
