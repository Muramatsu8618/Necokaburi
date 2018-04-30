class RatingsController < ApplicationController
  def new
  end

  def show
    @now = Date.today
    @ago8 = @now.ago(8.days)
    @ago7 = @now.ago(7.days)
    @ago6 = @now.ago(6.days)
    @ago5 = @now.ago(5.days)
    @ago4 = @now.ago(4.days)
    @ago3 = @now.ago(3.days)
    @ago2 = @now.ago(2.days)

    @site1 = Site1.where(user_id: current_user.id).sum(:rating)
    @site2 = Site2.where(user_id: current_user.id).sum(:rating)
    @site3 = Site3.where(user_id: current_user.id).sum(:rating)
    @site4 = Site4.where(user_id: current_user.id).sum(:rating)
    @site5 = Site5.where(user_id: current_user.id).sum(:rating)
    @all = @site1 + @site2 + @site3 + @site4 + @site5

    @total1 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..Time.now]).sum(:rating)
    @total2 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..Time.now]).sum(:rating)
    @total3 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..Time.now]).sum(:rating)
    @total4 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..Time.now]).sum(:rating)
    @total5 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..Time.now]).sum(:rating)
    @sum1 = @total1 + @total2 + @total3 + @total4 + @total5

    @total6 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..1.days.ago]).sum(:rating)
    @total7 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..1.days.ago]).sum(:rating)
    @total8 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..1.days.ago]).sum(:rating)
    @total9 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..1.days.ago]).sum(:rating)
    @total10 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..1.days.ago]).sum(:rating)
    @sum2 = @total6 + @total7 + @total8 + @total9 + @total10

    @total11 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..2.days.ago]).sum(:rating)
    @total12 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..2.days.ago]).sum(:rating)
    @total13 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..2.days.ago]).sum(:rating)
    @total14 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..2.days.ago]).sum(:rating)
    @total15 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..2.days.ago]).sum(:rating)
    @sum3 = @total11 + @total12 + @total13 + @total14 + @total15

    @total16 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..3.days.ago]).sum(:rating)
    @total17 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..3.days.ago]).sum(:rating)
    @total18 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..3.days.ago]).sum(:rating)
    @total19 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..3.days.ago]).sum(:rating)
    @total20 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..3.days.ago]).sum(:rating)
    @sum4 = @total16 + @total17 + @total18 + @total19 + @total20

    @total21 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..4.days.ago]).sum(:rating)
    @total22 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..4.days.ago]).sum(:rating)
    @total23 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..4.days.ago]).sum(:rating)
    @total24 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..4.days.ago]).sum(:rating)
    @total25 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..4.days.ago]).sum(:rating)
    @sum5 = @total21 + @total22 + @total23 + @total24 + @total25

    @total26 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..5.days.ago]).sum(:rating)
    @total27 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..5.days.ago]).sum(:rating)
    @total28 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..5.days.ago]).sum(:rating)
    @total29 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..5.days.ago]).sum(:rating)
    @total30 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..5.days.ago]).sum(:rating)
    @sum6 = @total26 + @total27 + @total28 + @total29 + @total30

    @total31 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..6.days.ago]).sum(:rating)
    @total32 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..6.days.ago]).sum(:rating)
    @total33 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..6.days.ago]).sum(:rating)
    @total34 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..6.days.ago]).sum(:rating)
    @total35 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..6.days.ago]).sum(:rating)
    @sum7 = @total31 + @total32 + @total33 + @total34 + @total35

    @total36 = Site1.where(user_id: current_user.id).where(created_at: [10.days.ago..7.days.ago]).sum(:rating)
    @total37 = Site2.where(user_id: current_user.id).where(created_at: [10.days.ago..7.days.ago]).sum(:rating)
    @total38 = Site3.where(user_id: current_user.id).where(created_at: [10.days.ago..7.days.ago]).sum(:rating)
    @total39 = Site4.where(user_id: current_user.id).where(created_at: [10.days.ago..7.days.ago]).sum(:rating)
    @total40 = Site5.where(user_id: current_user.id).where(created_at: [10.days.ago..7.days.ago]).sum(:rating)
    @sum8 = @total36 + @total37 + @total38 + @total39 + @total40
  end
end
