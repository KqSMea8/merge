.class public final enum Lcom/taobao/orange/GlobalOrange$ENV;
.super Ljava/lang/Enum;
.source "GlobalOrange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ksf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/GlobalOrange$ENV;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/GlobalOrange$ENV;

.field public static final enum ONLINE:Lcom/taobao/orange/GlobalOrange$ENV;

.field public static final enum PREPARE:Lcom/taobao/orange/GlobalOrange$ENV;

.field public static final enum TEST:Lcom/taobao/orange/GlobalOrange$ENV;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/taobao/orange/GlobalOrange$ENV;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/taobao/orange/GlobalOrange$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/GlobalOrange$ENV;->ONLINE:Lcom/taobao/orange/GlobalOrange$ENV;

    new-instance v0, Lcom/taobao/orange/GlobalOrange$ENV;

    const-string/jumbo v1, "PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/orange/GlobalOrange$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/GlobalOrange$ENV;->PREPARE:Lcom/taobao/orange/GlobalOrange$ENV;

    new-instance v0, Lcom/taobao/orange/GlobalOrange$ENV;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v4}, Lcom/taobao/orange/GlobalOrange$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/GlobalOrange$ENV;->TEST:Lcom/taobao/orange/GlobalOrange$ENV;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/orange/GlobalOrange$ENV;

    sget-object v1, Lcom/taobao/orange/GlobalOrange$ENV;->ONLINE:Lcom/taobao/orange/GlobalOrange$ENV;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/GlobalOrange$ENV;->PREPARE:Lcom/taobao/orange/GlobalOrange$ENV;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/orange/GlobalOrange$ENV;->TEST:Lcom/taobao/orange/GlobalOrange$ENV;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/orange/GlobalOrange$ENV;->$VALUES:[Lcom/taobao/orange/GlobalOrange$ENV;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/GlobalOrange$ENV;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/taobao/orange/GlobalOrange$ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/GlobalOrange$ENV;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/GlobalOrange$ENV;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/taobao/orange/GlobalOrange$ENV;->$VALUES:[Lcom/taobao/orange/GlobalOrange$ENV;

    invoke-virtual {v0}, [Lcom/taobao/orange/GlobalOrange$ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/GlobalOrange$ENV;

    return-object v0
.end method
