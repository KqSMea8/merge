.class public final enum Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;
.super Ljava/lang/Enum;
.source "RoundedCornersBitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Iwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field public static final enum ALL:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field public static final enum BOTTOM:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field public static final enum LEFT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field public static final enum RIGHT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field public static final enum TOP:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->ALL:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 17
    new-instance v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->TOP:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 18
    new-instance v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->BOTTOM:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 19
    new-instance v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->LEFT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 20
    new-instance v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->RIGHT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    sget-object v1, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->ALL:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->TOP:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->BOTTOM:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->LEFT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->RIGHT:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->$VALUES:[Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->$VALUES:[Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    invoke-virtual {v0}, [Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    return-object v0
.end method
