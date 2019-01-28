.class public Lcom/youku/service/push/WakeUpItem;
.super Ljava/lang/Object;
.source "WakeUpItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public checkClass:Ljava/lang/String;

.field public checkProcess:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public delay:I

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extraBoolean:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public extraInt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public flags:Ljava/lang/String;

.field public interval:I

.field public packageName:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x3c

    iput v0, p0, Lcom/youku/service/push/WakeUpItem;->delay:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/service/push/WakeUpItem;->type:I

    return-void
.end method
