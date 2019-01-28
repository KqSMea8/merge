.class public final enum Lcom/taobao/orange/OConstant$ENV;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ysf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/OConstant$ENV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$ENV;

.field public static final enum ONLINE:Lcom/taobao/orange/OConstant$ENV;

.field public static final enum PREPARE:Lcom/taobao/orange/OConstant$ENV;

.field public static final enum TEST:Lcom/taobao/orange/OConstant$ENV;


# instance fields
.field private des:Ljava/lang/String;

.field private envMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "online"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const-string/jumbo v1, "PREPARE"

    const-string/jumbo v2, "pre"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "test"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/orange/OConstant$ENV;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->$VALUES:[Lcom/taobao/orange/OConstant$ENV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "envMode"    # I
    .param p4, "des"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/taobao/orange/OConstant$ENV;->envMode:I

    .line 121
    iput-object p4, p0, Lcom/taobao/orange/OConstant$ENV;->des:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$ENV;
    .locals 1
    .param p0, "envMode"    # I

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 141
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    goto :goto_0

    .line 137
    :pswitch_1
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    goto :goto_0

    .line 139
    :pswitch_2
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$ENV;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/taobao/orange/OConstant$ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/OConstant$ENV;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$ENV;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->$VALUES:[Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$ENV;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/taobao/orange/OConstant$ENV;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvMode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/taobao/orange/OConstant$ENV;->envMode:I

    return v0
.end method
