.class public final Lc8/suq;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/yuq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/yuq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lc8/yuq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/yuq;-><init>(Z)V

    sput-object v0, Lc8/suq;->INSTANCE:Lc8/yuq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
