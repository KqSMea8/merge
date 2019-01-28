.class public final Lcom/youku/phone/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static collection_decelerate_cubic:I

.field public static collection_decelerate_quint:I

.field public static decelerate_cubic:I

.field public static decelerate_quint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14922
    const/high16 v0, 0x7f070000

    sput v0, Lcom/youku/phone/R$interpolator;->collection_decelerate_cubic:I

    .line 14923
    const v0, 0x7f070001

    sput v0, Lcom/youku/phone/R$interpolator;->collection_decelerate_quint:I

    .line 14924
    const v0, 0x7f070002

    sput v0, Lcom/youku/phone/R$interpolator;->decelerate_cubic:I

    .line 14925
    const v0, 0x7f070003

    sput v0, Lcom/youku/phone/R$interpolator;->decelerate_quint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
