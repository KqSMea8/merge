.class public Lc8/XJd;
.super Ljava/lang/Object;
.source "PushNotificationBuilder.java"


# instance fields
.field protected mLargIcon:I

.field protected mNotificationDefaults:I

.field protected mNotificationFlags:I

.field protected mNotificationsound:Ljava/lang/String;

.field protected mStatusbarIcon:I

.field protected mVibratePattern:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmLargIcon()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lc8/XJd;->mLargIcon:I

    return v0
.end method

.method public getmNotificationDefaults()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lc8/XJd;->mNotificationDefaults:I

    return v0
.end method

.method public getmNotificationFlags()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lc8/XJd;->mNotificationFlags:I

    return v0
.end method

.method public getmNotificationsound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/XJd;->mNotificationsound:Ljava/lang/String;

    return-object v0
.end method

.method public getmStatusbarIcon()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lc8/XJd;->mStatusbarIcon:I

    return v0
.end method

.method public getmVibratePattern()[J
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/XJd;->mVibratePattern:[J

    return-object v0
.end method

.method public setmLargIcon(I)V
    .locals 0
    .param p1, "mLargIcon"    # I

    .prologue
    .line 43
    iput p1, p0, Lc8/XJd;->mLargIcon:I

    .line 44
    return-void
.end method

.method public setmNotificationDefaults(I)V
    .locals 0
    .param p1, "mNotificationDefaults"    # I

    .prologue
    .line 19
    iput p1, p0, Lc8/XJd;->mNotificationDefaults:I

    .line 20
    return-void
.end method

.method public setmNotificationFlags(I)V
    .locals 0
    .param p1, "mNotificationFlags"    # I

    .prologue
    .line 27
    iput p1, p0, Lc8/XJd;->mNotificationFlags:I

    .line 28
    return-void
.end method

.method public setmNotificationsound(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNotificationsound"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/XJd;->mNotificationsound:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setmStatusbarIcon(I)V
    .locals 0
    .param p1, "mStatusbarIcon"    # I

    .prologue
    .line 35
    iput p1, p0, Lc8/XJd;->mStatusbarIcon:I

    .line 36
    return-void
.end method

.method public setmVibratePattern([J)V
    .locals 0
    .param p1, "mVibratePattern"    # [J

    .prologue
    .line 59
    iput-object p1, p0, Lc8/XJd;->mVibratePattern:[J

    .line 60
    return-void
.end method
