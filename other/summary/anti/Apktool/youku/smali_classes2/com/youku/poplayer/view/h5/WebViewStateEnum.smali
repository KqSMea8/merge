.class public final enum Lcom/youku/poplayer/view/h5/WebViewStateEnum;
.super Ljava/lang/Enum;
.source "WebViewStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/poplayer/view/h5/WebViewStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/poplayer/view/h5/WebViewStateEnum;

.field public static final enum ALLClOSE:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

.field public static final enum DEF:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

.field public static final enum UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

.field public static final enum WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    const-string/jumbo v1, "ALLClOSE"

    invoke-direct {v0, v1, v2, v2}, Lcom/youku/poplayer/view/h5/WebViewStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->ALLClOSE:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    .line 19
    new-instance v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    const-string/jumbo v1, "DEF"

    invoke-direct {v0, v1, v3, v3}, Lcom/youku/poplayer/view/h5/WebViewStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->DEF:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    .line 24
    new-instance v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    const-string/jumbo v1, "UC"

    invoke-direct {v0, v1, v4, v4}, Lcom/youku/poplayer/view/h5/WebViewStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    .line 29
    new-instance v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    const-string/jumbo v1, "WV"

    invoke-direct {v0, v1, v5, v5}, Lcom/youku/poplayer/view/h5/WebViewStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    sget-object v1, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->ALLClOSE:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->DEF:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->$VALUES:[Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->mValue:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/poplayer/view/h5/WebViewStateEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/poplayer/view/h5/WebViewStateEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->$VALUES:[Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    invoke-virtual {v0}, [Lcom/youku/poplayer/view/h5/WebViewStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->mValue:I

    return v0
.end method
