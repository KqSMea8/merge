.class public Lc8/QZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/PZb;


# instance fields
.field public mASAC:Ljava/lang/String;

.field public mCouponInstanceSource:I

.field public mExtParams:Ljava/util/Map;

.field public mSupplierId:Ljava/lang/Long;

.field public mUUID:Ljava/lang/String;

.field public mYbhpssParams:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoupon()Lc8/YZb;
    .locals 1

    new-instance v0, Lc8/XZb;

    invoke-direct {v0, p0}, Lc8/XZb;-><init>(Lc8/QZb;)V

    return-object v0
.end method
