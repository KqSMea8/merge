.class public final enum Lcom/taobao/orange/util/OLog$Level;
.super Ljava/lang/Enum;
.source "OLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/buf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/orange/util/OLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/util/OLog$Level;

.field public static final enum D:Lcom/taobao/orange/util/OLog$Level;

.field public static final enum E:Lcom/taobao/orange/util/OLog$Level;

.field public static final enum I:Lcom/taobao/orange/util/OLog$Level;

.field public static final enum L:Lcom/taobao/orange/util/OLog$Level;

.field public static final enum V:Lcom/taobao/orange/util/OLog$Level;

.field public static final enum W:Lcom/taobao/orange/util/OLog$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "V"

    invoke-direct {v0, v1, v3}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->V:Lcom/taobao/orange/util/OLog$Level;

    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "D"

    invoke-direct {v0, v1, v4}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->D:Lcom/taobao/orange/util/OLog$Level;

    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "I"

    invoke-direct {v0, v1, v5}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->I:Lcom/taobao/orange/util/OLog$Level;

    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "W"

    invoke-direct {v0, v1, v6}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->W:Lcom/taobao/orange/util/OLog$Level;

    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "E"

    invoke-direct {v0, v1, v7}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->E:Lcom/taobao/orange/util/OLog$Level;

    new-instance v0, Lcom/taobao/orange/util/OLog$Level;

    const-string/jumbo v1, "L"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/orange/util/OLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->L:Lcom/taobao/orange/util/OLog$Level;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/orange/util/OLog$Level;

    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->V:Lcom/taobao/orange/util/OLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->D:Lcom/taobao/orange/util/OLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->I:Lcom/taobao/orange/util/OLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->W:Lcom/taobao/orange/util/OLog$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->E:Lcom/taobao/orange/util/OLog$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/orange/util/OLog$Level;->L:Lcom/taobao/orange/util/OLog$Level;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/orange/util/OLog$Level;->$VALUES:[Lcom/taobao/orange/util/OLog$Level;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/util/OLog$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/util/OLog$Level;

    return-object v0
.end method

.method public static values()[Lcom/taobao/orange/util/OLog$Level;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->$VALUES:[Lcom/taobao/orange/util/OLog$Level;

    invoke-virtual {v0}, [Lcom/taobao/orange/util/OLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/util/OLog$Level;

    return-object v0
.end method
