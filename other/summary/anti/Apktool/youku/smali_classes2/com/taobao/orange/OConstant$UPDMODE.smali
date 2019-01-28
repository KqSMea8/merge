.class public final enum Lcom/taobao/orange/OConstant$UPDMODE;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ysf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPDMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/OConstant$UPDMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const-string/jumbo v1, "O_XMD"

    invoke-direct {v0, v1, v2}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const-string/jumbo v1, "O_EVENT"

    invoke-direct {v0, v1, v3}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const-string/jumbo v1, "O_ALL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->$VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

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
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1
    .param p0, "indexUpdMode"    # I

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    .line 173
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    goto :goto_0

    .line 171
    :pswitch_2
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-class v0, Lcom/taobao/orange/OConstant$UPDMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/OConstant$UPDMODE;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->$VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$UPDMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$UPDMODE;

    return-object v0
.end method
