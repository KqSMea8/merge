.class public Lc8/Ekq;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lc8/Fkq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Ekq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lc8/Ekq;

    invoke-direct {v0}, Lc8/Ekq;-><init>()V

    sput-object v0, Lc8/Ekq;->INSTANCE:Lc8/Ekq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string/jumbo v1, "Overflowed buffer"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
