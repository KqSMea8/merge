.class public final enum Lcom/taobao/orange/GlobalOrange$SERVER;
.super Ljava/lang/Enum;
.source "GlobalOrange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ksf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SERVER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/GlobalOrange$SERVER;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/GlobalOrange$SERVER;

.field public static final enum TAOBAO:Lcom/taobao/orange/GlobalOrange$SERVER;

.field public static final enum YOUKU:Lcom/taobao/orange/GlobalOrange$SERVER;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/taobao/orange/GlobalOrange$SERVER;

    const-string/jumbo v1, "TAOBAO"

    invoke-direct {v0, v1, v2}, Lcom/taobao/orange/GlobalOrange$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/GlobalOrange$SERVER;->TAOBAO:Lcom/taobao/orange/GlobalOrange$SERVER;

    new-instance v0, Lcom/taobao/orange/GlobalOrange$SERVER;

    const-string/jumbo v1, "YOUKU"

    invoke-direct {v0, v1, v3}, Lcom/taobao/orange/GlobalOrange$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/GlobalOrange$SERVER;->YOUKU:Lcom/taobao/orange/GlobalOrange$SERVER;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/orange/GlobalOrange$SERVER;

    sget-object v1, Lcom/taobao/orange/GlobalOrange$SERVER;->TAOBAO:Lcom/taobao/orange/GlobalOrange$SERVER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/GlobalOrange$SERVER;->YOUKU:Lcom/taobao/orange/GlobalOrange$SERVER;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/orange/GlobalOrange$SERVER;->$VALUES:[Lcom/taobao/orange/GlobalOrange$SERVER;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/GlobalOrange$SERVER;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/taobao/orange/GlobalOrange$SERVER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/GlobalOrange$SERVER;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/GlobalOrange$SERVER;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/orange/GlobalOrange$SERVER;->$VALUES:[Lcom/taobao/orange/GlobalOrange$SERVER;

    invoke-virtual {v0}, [Lcom/taobao/orange/GlobalOrange$SERVER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/GlobalOrange$SERVER;

    return-object v0
.end method
