.class public final enum Lcom/baseproject/network/HttpRequestManager$NetEvent;
.super Ljava/lang/Enum;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baseproject/network/HttpRequestManager$NetEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseproject/network/HttpRequestManager$NetEvent;

.field public static final enum netRequest:Lcom/baseproject/network/HttpRequestManager$NetEvent;

.field public static final enum netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    new-instance v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;

    const-string/jumbo v1, "netRequest"

    invoke-direct {v0, v1, v2}, Lcom/baseproject/network/HttpRequestManager$NetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netRequest:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    .line 333
    new-instance v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;

    const-string/jumbo v1, "netResponse"

    invoke-direct {v0, v1, v3}, Lcom/baseproject/network/HttpRequestManager$NetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baseproject/network/HttpRequestManager$NetEvent;

    sget-object v1, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netRequest:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->$VALUES:[Lcom/baseproject/network/HttpRequestManager$NetEvent;

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
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baseproject/network/HttpRequestManager$NetEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 330
    const-class v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;

    return-object v0
.end method

.method public static values()[Lcom/baseproject/network/HttpRequestManager$NetEvent;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->$VALUES:[Lcom/baseproject/network/HttpRequestManager$NetEvent;

    invoke-virtual {v0}, [Lcom/baseproject/network/HttpRequestManager$NetEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseproject/network/HttpRequestManager$NetEvent;

    return-object v0
.end method
