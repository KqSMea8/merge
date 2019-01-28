.class public final Lc8/Adf;
.super Ljava/lang/Object;
.source "SimpleEvent.java"

# interfaces
.implements Lc8/fdf;


# instance fields
.field private eventId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "eventId"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lc8/Adf;->eventId:I

    .line 9
    return-void
.end method


# virtual methods
.method public getEventId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lc8/Adf;->eventId:I

    return v0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
