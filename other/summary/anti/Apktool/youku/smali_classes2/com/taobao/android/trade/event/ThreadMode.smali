.class public final enum Lcom/taobao/android/trade/event/ThreadMode;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/android/trade/event/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/trade/event/ThreadMode;

.field public static final enum AsyncThread:Lcom/taobao/android/trade/event/ThreadMode;

.field public static final enum BackgroundThread:Lcom/taobao/android/trade/event/ThreadMode;

.field public static final enum CurrentThread:Lcom/taobao/android/trade/event/ThreadMode;

.field public static final enum MainThread:Lcom/taobao/android/trade/event/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/taobao/android/trade/event/ThreadMode;

    const-string/jumbo v1, "CurrentThread"

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/trade/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/trade/event/ThreadMode;->CurrentThread:Lcom/taobao/android/trade/event/ThreadMode;

    new-instance v0, Lcom/taobao/android/trade/event/ThreadMode;

    const-string/jumbo v1, "MainThread"

    invoke-direct {v0, v1, v3}, Lcom/taobao/android/trade/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/trade/event/ThreadMode;->MainThread:Lcom/taobao/android/trade/event/ThreadMode;

    new-instance v0, Lcom/taobao/android/trade/event/ThreadMode;

    const-string/jumbo v1, "BackgroundThread"

    invoke-direct {v0, v1, v4}, Lcom/taobao/android/trade/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/trade/event/ThreadMode;->BackgroundThread:Lcom/taobao/android/trade/event/ThreadMode;

    new-instance v0, Lcom/taobao/android/trade/event/ThreadMode;

    const-string/jumbo v1, "AsyncThread"

    invoke-direct {v0, v1, v5}, Lcom/taobao/android/trade/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/trade/event/ThreadMode;->AsyncThread:Lcom/taobao/android/trade/event/ThreadMode;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/android/trade/event/ThreadMode;

    sget-object v1, Lcom/taobao/android/trade/event/ThreadMode;->CurrentThread:Lcom/taobao/android/trade/event/ThreadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/android/trade/event/ThreadMode;->MainThread:Lcom/taobao/android/trade/event/ThreadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/android/trade/event/ThreadMode;->BackgroundThread:Lcom/taobao/android/trade/event/ThreadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/android/trade/event/ThreadMode;->AsyncThread:Lcom/taobao/android/trade/event/ThreadMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/android/trade/event/ThreadMode;->$VALUES:[Lcom/taobao/android/trade/event/ThreadMode;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/trade/event/ThreadMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/taobao/android/trade/event/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/trade/event/ThreadMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/android/trade/event/ThreadMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/taobao/android/trade/event/ThreadMode;->$VALUES:[Lcom/taobao/android/trade/event/ThreadMode;

    invoke-virtual {v0}, [Lcom/taobao/android/trade/event/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/trade/event/ThreadMode;

    return-object v0
.end method
