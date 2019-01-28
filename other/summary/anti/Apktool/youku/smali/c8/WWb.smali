.class public Lc8/WWb;
.super Ljava/lang/Object;
.source "ClientEvent.java"


# instance fields
.field private event:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/WWb;->timestamp:Ljava/lang/Long;

    .line 17
    iput-object p2, p0, Lc8/WWb;->event:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lc8/WWb;->value:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/WWb;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lc8/WWb;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/WWb;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/WWb;->event:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/WWb;->timestamp:Ljava/lang/Long;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/WWb;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method
