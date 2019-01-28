.class public final enum Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;
.super Ljava/lang/Enum;
.source "AntiTheftChainException.java"

# interfaces
.implements Lc8/oPg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/antitheftchain/exception/AntiTheftChainException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;",
        ">;",
        "Lc8/oPg;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

.field public static final enum AntiTheftChain_Create_Avmp_Instance_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

.field public static final enum AntiTheftChain_Invoke_Avmp_Sign_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

.field public static final enum AntiTheftChain_Param_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

.field public static final enum AntiTheftChain_Url_Unsupported_Encoding_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10
    new-instance v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v1, "AntiTheftChain_Create_Avmp_Instance_Error"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Create_Avmp_Instance_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    .line 11
    new-instance v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v1, "AntiTheftChain_Invoke_Avmp_Sign_Error"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Invoke_Avmp_Sign_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    .line 12
    new-instance v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v1, "AntiTheftChain_Param_Error"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Param_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    .line 13
    new-instance v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v1, "AntiTheftChain_Url_Unsupported_Encoding_Error"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Url_Unsupported_Encoding_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    sget-object v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Create_Avmp_Instance_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Invoke_Avmp_Sign_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Param_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Url_Unsupported_Encoding_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->$VALUES:[Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->errorCode:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->$VALUES:[Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    invoke-virtual {v0}, [Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
