.class public final Lc8/Vtq;
.super Ljava/lang/Object;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xtq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Xtq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Xtq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc8/Xtq;

    invoke-direct {v0}, Lc8/Xtq;-><init>()V

    sput-object v0, Lc8/Vtq;->INSTANCE:Lc8/Xtq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
