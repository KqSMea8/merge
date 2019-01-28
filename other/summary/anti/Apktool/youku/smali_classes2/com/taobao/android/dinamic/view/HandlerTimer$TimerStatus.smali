.class public final enum Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
.super Ljava/lang/Enum;
.source "HandlerTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Waf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const-string/jumbo v1, "Waiting"

    const-string/jumbo v2, "\u5f85\u542f\u52a8"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 115
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const-string/jumbo v1, "Running"

    const-string/jumbo v2, "\u8fd0\u884c\u4e2d"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 116
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const-string/jumbo v1, "Paused"

    const/4 v2, -0x1

    const-string/jumbo v3, "\u6682\u505c"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 117
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const-string/jumbo v1, "Stopped"

    const/4 v2, -0x2

    const-string/jumbo v3, "\u505c\u6b62"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    .line 123
    iput-object p4, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    return-object v0
.end method

.method public static values()[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    invoke-virtual {v0}, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    .line 132
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    .line 140
    return-void
.end method
