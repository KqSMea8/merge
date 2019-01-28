.class public final enum Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;
.super Ljava/lang/Enum;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/veo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

.field public static final enum LOAD_STATE_MORE:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

.field public static final enum LOAD_STATE_NORMAL:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

.field public static final enum LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    const-string/jumbo v1, "LOAD_STATE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_NORMAL:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 23
    new-instance v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    const-string/jumbo v1, "LOAD_STATE_REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 24
    new-instance v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    const-string/jumbo v1, "LOAD_STATE_MORE"

    invoke-direct {v0, v1, v4}, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_MORE:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_NORMAL:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_MORE:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->$VALUES:[Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->$VALUES:[Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    invoke-virtual {v0}, [Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    return-object v0
.end method
