.class public final enum Lcom/taobao/orange/OConstant$SERVER;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ysf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SERVER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/OConstant$SERVER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$SERVER;

.field public static final enum TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

.field public static final enum YOUKU:Lcom/taobao/orange/OConstant$SERVER;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/taobao/orange/OConstant$SERVER;

    const-string/jumbo v1, "TAOBAO"

    invoke-direct {v0, v1, v2}, Lcom/taobao/orange/OConstant$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    new-instance v0, Lcom/taobao/orange/OConstant$SERVER;

    const-string/jumbo v1, "YOUKU"

    invoke-direct {v0, v1, v3}, Lcom/taobao/orange/OConstant$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/orange/OConstant$SERVER;

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->$VALUES:[Lcom/taobao/orange/OConstant$SERVER;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$SERVER;
    .locals 1
    .param p0, "serverType"    # I

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 156
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$SERVER;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/taobao/orange/OConstant$SERVER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/OConstant$SERVER;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$SERVER;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->$VALUES:[Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$SERVER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$SERVER;

    return-object v0
.end method
