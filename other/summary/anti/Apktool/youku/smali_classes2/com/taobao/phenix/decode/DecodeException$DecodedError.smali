.class public final enum Lcom/taobao/phenix/decode/DecodeException$DecodedError;
.super Ljava/lang/Enum;
.source "DecodeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/decode/DecodeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecodedError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/phenix/decode/DecodeException$DecodedError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 8
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "OOM_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 10
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "UNAVAILABLE_INPUT_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 12
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "UNAVAILABLE_OUTPUT_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 14
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "EMPTY_BYTES_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 16
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "UNLINK_SO_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 18
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 20
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const-string/jumbo v1, "WEBP_FORMAT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->$VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object v0
.end method

.method public static values()[Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->$VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-virtual {v0}, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object v0
.end method
