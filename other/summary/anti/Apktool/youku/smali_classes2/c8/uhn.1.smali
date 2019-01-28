.class public interface abstract Lc8/uhn;
.super Ljava/lang/Object;
.source "IMobilePay.java"


# static fields
.field public static final ALIPAY_PAY_FAIL:I = 0x44d

.field public static final ALIPAY_PAY_QUERY_FAIL:I = 0x44e

.field public static final ALIPAY_PAY_SUCCESS:I = 0x44c

.field public static final PAY_CHANNEL_ALIPAY:Ljava/lang/String; = "100"

.field public static final PAY_CHANNEL_WEIXIN:Ljava/lang/String; = "103"


# virtual methods
.method public abstract buyVip(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract doRequestTrade(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
.end method
