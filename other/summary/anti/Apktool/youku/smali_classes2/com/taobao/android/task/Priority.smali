.class public final enum Lcom/taobao/android/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/android/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/task/Priority;

.field public static final enum BG_LOW:Lcom/taobao/android/task/Priority;

.field public static final enum BG_NORMAL:Lcom/taobao/android/task/Priority;

.field public static final enum BG_TOP:Lcom/taobao/android/task/Priority;

.field public static final enum DEFAULT:Lcom/taobao/android/task/Priority;

.field public static final enum UI_LOW:Lcom/taobao/android/task/Priority;

.field public static final enum UI_NORMAL:Lcom/taobao/android/task/Priority;

.field public static final enum UI_TOP:Lcom/taobao/android/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "UI_TOP"

    invoke-direct {v0, v1, v3}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->UI_TOP:Lcom/taobao/android/task/Priority;

    .line 10
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "UI_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->UI_NORMAL:Lcom/taobao/android/task/Priority;

    .line 11
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "UI_LOW"

    invoke-direct {v0, v1, v5}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->UI_LOW:Lcom/taobao/android/task/Priority;

    .line 12
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v6}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->DEFAULT:Lcom/taobao/android/task/Priority;

    .line 13
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "BG_TOP"

    invoke-direct {v0, v1, v7}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->BG_TOP:Lcom/taobao/android/task/Priority;

    .line 14
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "BG_NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->BG_NORMAL:Lcom/taobao/android/task/Priority;

    .line 15
    new-instance v0, Lcom/taobao/android/task/Priority;

    const-string/jumbo v1, "BG_LOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/task/Priority;->BG_LOW:Lcom/taobao/android/task/Priority;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/taobao/android/task/Priority;

    sget-object v1, Lcom/taobao/android/task/Priority;->UI_TOP:Lcom/taobao/android/task/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/android/task/Priority;->UI_NORMAL:Lcom/taobao/android/task/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/android/task/Priority;->UI_LOW:Lcom/taobao/android/task/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/android/task/Priority;->DEFAULT:Lcom/taobao/android/task/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/android/task/Priority;->BG_TOP:Lcom/taobao/android/task/Priority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/android/task/Priority;->BG_NORMAL:Lcom/taobao/android/task/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/android/task/Priority;->BG_LOW:Lcom/taobao/android/task/Priority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/android/task/Priority;->$VALUES:[Lcom/taobao/android/task/Priority;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/task/Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/taobao/android/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/task/Priority;

    return-object v0
.end method

.method public static values()[Lcom/taobao/android/task/Priority;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/taobao/android/task/Priority;->$VALUES:[Lcom/taobao/android/task/Priority;

    invoke-virtual {v0}, [Lcom/taobao/android/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/task/Priority;

    return-object v0
.end method
