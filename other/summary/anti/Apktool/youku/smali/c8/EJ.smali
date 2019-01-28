.class public Lc8/EJ;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field type:Lanet/channel/entity/EventType;


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;)V
    .locals 0
    .param p1, "type"    # Lanet/channel/entity/EventType;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lc8/EJ;->type:Lanet/channel/entity/EventType;

    .line 9
    return-void
.end method

.method public constructor <init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lanet/channel/entity/EventType;
    .param p2, "errorCode"    # I
    .param p3, "errorDetail"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lc8/EJ;->type:Lanet/channel/entity/EventType;

    .line 13
    iput p2, p0, Lc8/EJ;->errorCode:I

    .line 14
    iput-object p3, p0, Lc8/EJ;->errorDetail:Ljava/lang/String;

    .line 15
    return-void
.end method
