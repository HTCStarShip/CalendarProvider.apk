.class Lcom/android/providers/calendar/CalendarProvider2$1;
.super Landroid/content/BroadcastReceiver;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, action:Ljava/lang/String;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 565
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v1, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 573
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 569
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v1, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    goto :goto_0

    .line 570
    :cond_3
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v1, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    goto :goto_0
.end method
